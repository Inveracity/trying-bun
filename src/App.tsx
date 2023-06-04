import { Box, Container, Input, Text } from "@chakra-ui/react";
import { useState } from "react";

function App() {
  const [name, setName] = useState("test")

  return (
    <Container>
      <Box>
        <Input name="yourname" value={name} onChange={e => setName(e.target.value)} ></Input>
        <Text>{name}</Text>
      </Box>
    </Container>
  );
}

export default App;
