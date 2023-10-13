import NavigationProvider from './lib/navigation/provider'
import Route from './lib/navigation/route'

/* PAGES */
import Primary from './pages/Primary'

function App() {
  return (
    <NavigationProvider default="hidden">
      <Route name="primary" element={<Primary />} />
    </NavigationProvider>
  )
}

export default App